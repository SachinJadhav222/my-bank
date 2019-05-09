const globalTestData = function() {
    this.testData = {
        ocisID: '',
        title: '',
        firstName: '',
        middleName: '',
        lastName: '',
        address: '',
        dob_date: '',
        dob_month: '',
        dob_year: '',
        ni_number: '',
        Childtitle: '',
        ChildfirstName: '',
        ChildmiddleName: '',
        ChildlastName: '',
        Childdob_date: '',
        Childdob_month: '',
        Childdob_year: '',
        grossRate:'',
        aerRate:'',
        QueryResult:'',
        AccountName:'',
        CustomerNumber:'',
        DB_CustomerIDVNo:'',
        DB_CustomerNo:'',
        DB_AccountNo:'',
        DB_AccountName:'',
        DB_Address:'',
        Delivery_Name:'',
        Address:'',
        Delivery_Date:'',
        Account_Number:'',
        Account_Name:'',
        Account_Currency:'',
        Order_currency:'',
        Form_currency:'',
        Order_currency_Amount:'',
        Account_currency_Amount:'',
        seqno:'',
        jobid:'',
        filerecordcount:'',
        Exchange_rate:'',
        order_ref_num:'',
        order_ref_num2:'',
        first_denom_input:'',
        second_denom_input:'',
        third_denom_input:'',
        first_denom_total:'',
        second_denom_total:'',
        third_denom_total:'',
        order_ref_num_approve:'',
        order_ref_num_approve2:'',
        order_ref_num_approve3:'',
        create_order_audit_date:'',
        approve_order_audit_date:'',
        order_audit_entered_username:'',
        order_audit_entered_firstlastname:'',
        order_audit_approved_username:'',
        order_audit_approved_firstlastname:'',
        error_message_not_approved: "Please note: Your orders <p1> were not approved, as they are not in 'Entered' status.",
        warning_message_entered_status: "Your orders <p1> cannot be approved, as they are not in 'Entered' status.",
        tlUserName:'',
        approval_by_another_user:'Your orders <p1> cannot be approved, as you created the order. Another user needs to complete the approval.',
        dual_approval_not_eligible: 'One or more of your selected orders is not eligible for approval due to one of the following reasons, as they have already been approved, the delivery date is invalid or you created them. The remaining selected orders will still be approved.',
        single_approval_not_eligible:'One or more of your selected orders is not eligible for approval due to one of the following reasons, as they have already been approved or the delivery date is invalid. The remaining selected orders will still be approved.',
        order_audit_SanctionedRequired_username: '',
        order_audit_SanctionedRequiredRepaired_username: '',
        order_audit_SanctionedApproved_username: '',
        order_audit_SanctionedRejected_username: '',
        order_audit_SanctionedCompleted_username: '',
        order_audit_BankRejected_username: '',
        order_audit_SanctionedRequired_comment: '',
        order_audit_SanctionedRequiredRepaired_comment: '',
        order_audit_SanctionedApproved_comment: '',
        order_audit_SanctionedRejected_comment: '',
        order_audit_SanctionedCompleted_comment: '',
        order_audit_BankRejected_comment: ''

    };

    this.setTitle= function(field) {
        this.testData.title = field
    };
    this.setFirstName= function(field) {
        this.testData.firstName = field
    };
    this.setMiddleName= function(field) {
        this.testData.middleName = field
    };
    this.setLastName= function(field) {
        this.testData.lastName = field
    };
    this.setaddress= function(field) {
        this.testData.product = field
    };
    this.setdob_date= function(field) {
        this.testData.dob_date = field
    };
    this.setdob_month= function(field) {
        this.testData.dob_month = field
    };
    this.setdob_year= function(field) {
        this.testData.dob_year = field
    };
    this.setOCISID= function(field) {
        this.testData.ocisID = field
    };
    this.setni_number = function(field) {
        this.testData.ni_number = field
    };
    this.setChildTitle= function(field) {
        this.testData.Childtitle = field
    };
    this.setChildFirstName= function(field) {
        this.testData.ChildfirstName = field
    };
    this.setChildMiddleName= function(field) {
        this.testData.ChildmiddleName = field
    };
    this.setChildLastName= function(field) {
        this.testData.ChildlastName = field
    };
    this.setChilddob_date= function(field) {
        this.testData.Childdob_date = field
    };
    this.setChilddob_month= function(field) {
        this.testData.Childdob_month = field
    };
    this.setChilddob_year= function(field) {
        this.testData.Childdob_year = field
    };
    this.setGrossRate= function(field) {
        this.testData.grossRate = field
    };
    this.setAERRate= function(field) {
        this.testData.aerRate = field
    };
    this.setField= function(field,value) {
        this.testData[field] = value;
    };
};
module.exports = new globalTestData();
