<?php

class MailController extends FrontController
{
    public function actionOut($list = 1) {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("mail");
        $mail = new Mail();
        $total = $mail->getTotalOutMail();
        $pagination = new Pagination($total,$list,Mail::LIMIT_MAIL,'list-');
        $mails = $mail->getAllMailOut($list);

        require_once(ROOT . '/view/mail/out/index.php');

        return true;
    }

    public static function actionAddout() {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("mail_add");

        $mail = new Mail();
        
        $gu_mails = $mail->getAllGuMail();

        $ind = '';
        $date = date("Y-m-d");
        $name = $user_info['id'];
        $to_list = '';
        $description = '';
        $count_list = '';
        $pr = '';

        $errors = '';

        if(isset($_POST["submit"])) {
            $ind = trim($_POST["ind"]);
            $to_list = trim($_POST["to_list"]);
            $description = trim($_POST["description"]);
            $count_list = trim($_POST["count_list"]);
            $pr = trim($_POST["pr"]);

            /*if(!Front::checkText($comp_name)) {
                $errors[] = "Ім'я не може бути менше 3 символів";
            }*/

            if($errors == false) {
                $result = $mail -> registerOut($date, $ind, $to_list, $description, $count_list, $name, $pr);
            }
        }

        require_once(ROOT . '/view/mail/out/add.php');

        return true;
    }

    public function actionDksu($list = 1) {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("mail");
        $mail = new Mail();
        $total = $mail->getTotalDksuMail();
        $pagination = new Pagination($total,$list,Mail::LIMIT_MAIL,'list-');
        $mails = $mail->getAllMailDksu($list);

        require_once(ROOT . '/view/mail/dksu/index.php');

        return true;
    }

    public static function actionAdddksu() {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("mail_add");

        $mail = new Mail();

        $to_mail = '';
        $number = '';
        $date_mail = '';
        $date_to = '';
        $description = '';
        $work_mail = '';
        $work_to = User::getUserList();

        $errors = '';

        if(isset($_POST["submit"])) {
            $to_mail = trim($_POST["to_mail"]);
            $number = trim($_POST["number"]);
            $description = trim($_POST["description"]);
            $date_mail = trim($_POST["date_mail"]);
            $date_to = trim($_POST["date_to"]);
            $work_mail = trim($_POST["work_mail"]);
            $work_to = trim($_POST["work_to"]);


            if($errors == false) {
                $result = $mail -> registerDksu($to_mail, $number, $date_mail, $date_to, $description, $work_mail, $work_to);
            }
        }

        require_once(ROOT . '/view/mail/dksu/add.php');

        return true;
    }

    public function actionOrg($list = 1) {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("mail");
        $mail = new Mail();
        $total = $mail->getTotalOrgMail();
        $pagination = new Pagination($total,$list,Mail::LIMIT_MAIL,'list-');
        $mails = $mail->getAllMailOrg($list);

        require_once(ROOT . '/view/mail/org/index.php');

        return true;
    }

    public static function actionAddorg() {
        $user_info = FrontController::checkUser();
        $pages = new Pages();
        $page = $pages->getPageBySlug("mail_add");

        $mail = new Mail();

        $to_mail = '';
        $number = '';
        $date_mail = '';
        $date_to = '';
        $description = '';
        $work_mail = '';
        $work_to = User::getUserList();

        $errors = '';

        if(isset($_POST["submit"])) {
            $to_mail = trim($_POST["to_mail"]);
            $number = trim($_POST["number"]);
            $description = trim($_POST["description"]);
            $date_mail = trim($_POST["date_mail"]);
            $date_to = trim($_POST["date_to"]);
            $work_mail = trim($_POST["work_mail"]);
            $work_to = trim($_POST["work_to"]);


            if($errors == false) {
                $result = $mail -> registerOrg($to_mail, $number, $date_mail, $date_to, $description, $work_mail, $work_to);
            }
        }

        require_once(ROOT . '/view/mail/org/add.php');

        return true;
    }
    
    public static function actionExport() {
        $mail = new Mail();
        $mails = $mail->getAllMailOutNoLimit();
        // Подключаем класс для работы с excel
        require_once('/components/PHPExcel.php');
        // Подключаем класс для вывода данных в формате excel
        require_once('/components/PHPExcel/Writer/Excel5.php');
        // Создаем объект класса PHPExcel
        $xls = new PHPExcel();
        // Устанавливаем индекс активного листа
        $xls->setActiveSheetIndex(0);
        // Получаем активный лист
        $sheet = $xls->getActiveSheet();
        // Подписываем лист
        $sheet->setTitle('Журнал Вихідної Кориспонденції');
        // Вставляем текст в ячейку A1
        $sheet->getColumnDimension('A')->setWidth(15);
        $sheet->getColumnDimension('B')->setWidth(15);
        $sheet->getColumnDimension('C')->setWidth(25);
        $sheet->getColumnDimension('D')->setWidth(40);
        $sheet->getColumnDimension('E')->setWidth(10);
        $sheet->getColumnDimension('F')->setWidth(25);
        $sheet->getColumnDimension('G')->setWidth(25);
        $sheet->getRowDimension(1)->setRowHeight(30);
        $style_def = array(
            // Шрифт
            'font'=>array(
                'name' => 'Times New Roman',
                'size' => 12,
                'color'=>array(
                    'rgb' => '000000'
                )
            ),
            // Выравнивание
            'alignment' => array(
                'horizontal' => PHPExcel_STYLE_ALIGNMENT::HORIZONTAL_CENTER,
                'vertical' => PHPExcel_STYLE_ALIGNMENT::VERTICAL_CENTER,
                'serWrapText' => true,
            ),
            // Заполнение цветом
           'borders'=>array(
            // внешняя рамка
            'outline' => array(
                'style'=>PHPExcel_Style_Border::BORDER_THICK,
                'color' => array(
                    'rgb'=>'000000'
                )
            ),
            // внутренняя
            'allborders'=>array(
                'style'=>PHPExcel_Style_Border::BORDER_THIN,
                'color' => array(
                    'rgb'=>'000000'
                    )
                )
            )
        );
        $style_top = array(
            'font'=>array(
                'bold' => true,
                'name' => 'Times New Roman',
                'size' => 14,
                'color'=>array(
                    'rgb' => '000000'
                )
            ),
            
            'borders'=>array(
                'allborders' => array(
                    'style'=>PHPExcel_Style_Border::BORDER_THICK,
                    'color' => array(
                        'rgb'=>'000000'
                    )
                )
            ),
            'fill' => array(
                'type' => PHPExcel_STYLE_FILL::FILL_SOLID,
                'color' => array(
                    'rgb' => '1abc9c'
                )
            )
        );
        
        $sheet->getStyle('A1:G1')->applyFromArray($style_top);
        $sheet->getStyle('A1:G1000')->applyFromArray($style_def);
        $sheet->getStyle('A1:G1000')->getAlignment()->setWrapText(true);
        $i = 2;
        $sheet->setCellValueByColumnAndRow(0,1,"Дата");
        $sheet->setCellValueByColumnAndRow(1,1,"Номер");
        $sheet->setCellValueByColumnAndRow(2,1,"Кому направлено");
        $sheet->setCellValueByColumnAndRow(3,1,"Короткий зміст");
        $sheet->setCellValueByColumnAndRow(4,1,"К-ть аркушів");
        $sheet->setCellValueByColumnAndRow(5,1,"Відправник");
        $sheet->setCellValueByColumnAndRow(6,1,"Примітка");
        foreach ($mails as $mail) {
            $sheet->setCellValueByColumnAndRow(0,$i,$mail['date']);
            $sheet->setCellValueByColumnAndRow(1,$i,$mail['ind']."/".$mail['id']);
            $sheet->setCellValueByColumnAndRow(2,$i,$mail['to_list']);
            $sheet->setCellValueByColumnAndRow(3,$i,$mail['description']);
            $sheet->setCellValueByColumnAndRow(4,$i,$mail['count_list']);
            $sheet->setCellValueByColumnAndRow(5,$i,User::getUserNameById($mail['name']));
            $sheet->setCellValueByColumnAndRow(6,$i,$mail['pr']);
            $sheet->getStyleByColumnAndRow()->getAlignment()->
            setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
            $i++;
                }
        header ( "Cache‐Control: no‐cache, must‐revalidate" );
        header ( "Pragma: no‐cache" );
        header ( "Content-type: application/vnd.ms‐excel" );
        header ( "Content-Disposition: attachment; filename=Вихідна.xls" );
        // Выводим содержимое файла
        $objWriter = new PHPExcel_Writer_Excel5($xls);
        $objWriter->save('php://output');
    }
}