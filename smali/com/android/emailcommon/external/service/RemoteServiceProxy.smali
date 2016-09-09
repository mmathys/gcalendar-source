.class public Lcom/android/emailcommon/external/service/RemoteServiceProxy;
.super Lcom/android/emailcommon/external/service/ServiceProxy;
.source "RemoteServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/EmailServiceProxy;
.implements Lcom/android/emailcommon/service/IEmailService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/external/service/RemoteServiceProxy$EmailProxyTask;
    }
.end annotation


# instance fields
.field private final isRemote:Z

.field private mReturn:Ljava/lang/Object;

.field private mService:Lcom/android/emailcommon/service/IEmailService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/external/service/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    .line 72
    :try_start_0
    invoke-static {p1}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    invoke-static {p1}, Lcom/android/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->isRemote:Z

    .line 78
    return-void

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/emailcommon/external/service/RemoteServiceProxy;)Lcom/android/emailcommon/service/IEmailService;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/emailcommon/external/service/RemoteServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    return-object v0
.end method

.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$6;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "autoDiscover"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 233
    invoke-virtual {p0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->waitForCompletion()V

    .line 234
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 241
    :goto_0
    return-object v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 238
    const-class v1, Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 239
    const-string v1, "EmailServiceProxy"

    const-string v2, "autodiscover_error_code"

    .line 240
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "autoDiscover returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 239
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public continueAutodiscover(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 248
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$7;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "continueAutodiscover"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 254
    invoke-virtual {p0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->waitForCompletion()V

    .line 255
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 262
    :goto_0
    return-object v0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 259
    const-class v1, Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 260
    const-string v1, "EmailServiceProxy"

    const-string v2, "autodiscover_error_code"

    .line 261
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x28

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "continueAutodiscover returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 260
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public createFolder(JLjava/lang/String;J)V
    .locals 7

    .prologue
    .line 192
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$4;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$4;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;JLjava/lang/String;J)V

    const-string v1, "createFolder"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 198
    return-void
.end method

.method public deleteExternalAccountPIMData(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$11;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$11;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;Ljava/lang/String;)V

    const-string v1, "deleteAccountPIMData"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 356
    invoke-virtual {p0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->waitForCompletion()V

    .line 357
    return-void
.end method

.method public getApiVersion()I
    .locals 3

    .prologue
    .line 519
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$19;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$19;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;)V

    const-string v1, "getApiVersion"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 525
    invoke-virtual {p0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->waitForCompletion()V

    .line 526
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 528
    const-string v0, "EmailServiceProxy"

    const-string v1, "failed to get api version"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 529
    const/4 v0, -0x1

    .line 531
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getProtocolVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 502
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$18;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$18;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;Ljava/lang/String;)V

    const-string v1, "getProtocolVersion"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 508
    invoke-virtual {p0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->waitForCompletion()V

    .line 509
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JJZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v1, Lcom/android/emailcommon/external/service/RemoteServiceProxy$1;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$1;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;Lcom/android/emailcommon/service/IEmailServiceCallback;JJZ)V

    const-string v0, "loadAttachment"

    invoke-virtual {p0, v1, v0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 139
    return-void
.end method

.method public loadMeetingResponse(JJ)V
    .locals 7

    .prologue
    .line 143
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$2;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;JJ)V

    const-string v1, "loadMeetingResponse"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 153
    return-void
.end method

.method public markFolderForDeletion(JJ)V
    .locals 7

    .prologue
    .line 206
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$5;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$5;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;JJ)V

    const-string v1, "markFolderForDeletion"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 212
    return-void
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 82
    invoke-static {p1}, Lcom/android/emailcommon/service/IEmailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;

    .line 83
    return-void
.end method

.method public pushModify(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 422
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$14;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;J)V

    const-string v1, "pushModify"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 428
    return-void
.end method

.method public pushModifyWithBackoff(JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 442
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$15;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$15;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;JJ)V

    const-string v1, "pushModifyWithBackoff"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 448
    return-void
.end method

.method public retrieveRecipientAvailabilities(Ljava/lang/String;Ljava/util/List;JJ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/RecipientAvailability;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$17;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$17;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;Ljava/lang/String;Ljava/util/List;JJ)V

    const-string v1, "retrieveRecipientAvailabilities"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 490
    invoke-virtual {p0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->waitForCompletion()V

    .line 491
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;J)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 377
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$12;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$12;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;JLcom/android/emailcommon/service/SearchParams;J)V

    const-string v1, "searchMessages"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 383
    invoke-virtual {p0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->waitForCompletion()V

    .line 384
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 386
    const-string v0, "EmailServiceProxy"

    const-string v1, "No result returned in searchMessages"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 387
    const/16 v0, 0x15

    invoke-static {v0, v7}, Lcom/android/emailcommon/service/EmailServiceStatus;->buildSearchStatus(II)Landroid/os/Bundle;

    move-result-object v0

    .line 395
    :goto_0
    return-object v0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 396
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 395
    invoke-static {v7, v0}, Lcom/android/emailcommon/service/EmailServiceStatus;->buildSearchStatus(II)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public sendMail(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$13;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;J)V

    const-string v1, "sendMail"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 413
    return-void
.end method

.method public sendMeetingResponse(JIJJLjava/lang/String;JLjava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;JIJJLjava/lang/String;JLjava/lang/String;)V

    const-string v1, "sendMeetingResponse"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 335
    return-void
.end method

.method public setLogging(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 306
    const-string v0, "EmailServiceProxy"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "call to deprecated setLogging"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 307
    return-void
.end method

.method public sync(JLandroid/os/Bundle;)I
    .locals 3

    .prologue
    .line 452
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$16;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$16;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;JLandroid/os/Bundle;)V

    const-string v1, "sync"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 458
    invoke-virtual {p0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->waitForCompletion()V

    .line 459
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 462
    const/16 v0, 0x23

    .line 464
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public syncEasOofSettings(JLcom/android/emailcommon/provider/ExchangeOofSettings;)V
    .locals 3

    .prologue
    .line 268
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$8;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;JLcom/android/emailcommon/provider/ExchangeOofSettings;)V

    const-string v1, "syncEasOofSettings"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 280
    return-void
.end method

.method public updateFolderList(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$9;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;J)V

    const-string v1, "updateFolderList"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 296
    return-void
.end method

.method public validate(Lcom/android/emailcommon/service/HostAuthCompat;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$3;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;Lcom/android/emailcommon/service/HostAuthCompat;)V

    const-string v1, "validate"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 173
    invoke-virtual {p0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->waitForCompletion()V

    .line 174
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    const-string v1, "validate_result_code"

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    :goto_0
    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 180
    const-class v1, Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 181
    const-string v1, "EmailServiceProxy"

    const-string v2, "validate_result_code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "validate returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
