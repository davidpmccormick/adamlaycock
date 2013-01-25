<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceproject extends SectionDatasource{

		public $dsParamROOTELEMENT = 'project';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '1';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'yes';
		public $dsParamREQUIREDPARAM = '$url-title';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'3' => '{$url-title}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'images: image',
				'images: title',
				'categories: title',
				'client',
				'date',
				'additional-information: formatted'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'project',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://adamlaycock.com/beta',
					'email' => 'david@sumnoise.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-10-05T10:39:58+00:00'
			);
		}

		public function getSource(){
			return '3';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
