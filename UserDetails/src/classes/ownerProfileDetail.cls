public with sharing class ownerProfileDetail {
    @AuraEnabled 
    public static user fetchUserDetail(String ownerId){
        system.debug('owner'+ownerId);
        return [Select id,Name,SmallPhotoUrl, FullPhotoUrl
                From User
                Where Id =: ownerId];
    }
} 