<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcecategory extends SectionDatasource{

		public $dsParamROOTELEMENT = 'category';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'yes';
		public $dsParamREQUIREDPARAM = '$url-title';
		public $dsParamSORT = 'date';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'5' => '{$ds-catfilter.system-id}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'cover-image'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array('$ds-catfilter.system-id');
		}

		public function about(){
			return array(
				'name' => 'category',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://adamlaycock.com/beta',
					'email' => 'david@sumnoise.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-10-05T12:30:31+00:00'
			);
		}

		public function getSource(){
			return '3';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
