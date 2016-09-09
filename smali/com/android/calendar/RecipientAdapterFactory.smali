.class public Lcom/android/calendar/RecipientAdapterFactory;
.super Ljava/lang/Object;
.source "RecipientAdapterFactory.java"


# direct methods
.method public static create(Landroid/content/Context;)Lcom/android/ex/chips/BaseRecipientAdapter;
    .locals 5

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;-><init>()V

    const/16 v1, 0x8b

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;->setClientApplicationId(I)Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;->build()Lcom/google/android/gms/people/People$PeopleOptions1p;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/people/People;->API_1P:Lcom/google/android/gms/common/api/Api;

    .line 32
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 37
    new-instance v1, Lcom/google/android/gms/chips/GmsRecipientAdapter;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/gms/chips/GmsPhotoManager;

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/android/gms/chips/GmsPhotoManager;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/ContentResolver;)V

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/android/gms/chips/GmsRecipientAdapter;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/chips/GmsPhotoManager;)V

    .line 37
    return-object v1
.end method
