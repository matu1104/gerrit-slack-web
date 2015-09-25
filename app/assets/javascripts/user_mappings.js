$(function(){
    $('#add-user-mapping-link').click(function(){
        $('#add-user-mapping-modal').modal('show');
    });

    $('.edit-user-mapping-link').click(function(event){
        var mappingData = $(this).data('user-mapping');
        $('#slack-name-edit-form').val(mappingData.slack_name);
        $('#gerrit-name-edit-form').val(mappingData.gerrit_name);
        $('#edit-mapping-form').attr('action', '/user_mappings/' + mappingData.id);
        $('#edit-user-mapping-modal').modal('show');
    });
});