.class public Lcom/google/android/calendar/timely/DriveFilePickerActivity;
.super Landroid/app/Activity;
.source "DriveFilePickerActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/android/calendar/timely/DriveFilePickerActivity;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private openFilePicker()V
    .locals 7

    .prologue
    .line 123
    sget-object v0, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    .line 124
    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveApi;->newOpenFileActivityBuilder()Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->getGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;

    move-result-object v1

    .line 127
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    sget-object v1, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->TAG:Ljava/lang/String;

    const-string v2, "Unable to send intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 136
    packed-switch p1, :pswitch_data_0

    .line 149
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 151
    :goto_0
    return-void

    .line 138
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 139
    const-string v0, "response_drive_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    .line 142
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 143
    const-string v2, "driveIdExtra"

    invoke-virtual {v0}, Lcom/google/android/gms/drive/DriveId;->encodeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v3, v1}, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->finish()V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->TAG:Ljava/lang/String;

    const-string v1, "GoogleApiClient connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0}, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->openFilePicker()V

    .line 88
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    .prologue
    .line 105
    sget-object v1, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->TAG:Ljava/lang/String;

    const-string v2, "GoogleApiClient connection failed: "

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 116
    :goto_1
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    sget-object v1, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->TAG:Ljava/lang/String;

    const-string v2, "Exception while starting resolution activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->TAG:Ljava/lang/String;

    const-string v1, "GoogleApiClient connection suspended"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountNameExtra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->mAccountName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 78
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 79
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 53
    iget-object v0, p0, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/drive/Drive;->API:Lcom/google/android/gms/common/api/Api;

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/drive/Drive;->SCOPE_FULL:Lcom/google/android/gms/common/api/Scope;

    .line 56
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->mAccountName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 64
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/DriveFilePickerActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 67
    return-void
.end method
