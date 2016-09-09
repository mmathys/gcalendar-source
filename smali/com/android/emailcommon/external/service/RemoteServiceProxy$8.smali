.class Lcom/android/emailcommon/external/service/RemoteServiceProxy$8;
.super Lcom/android/emailcommon/external/service/RemoteServiceProxy$EmailProxyTask;
.source "RemoteServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/external/service/RemoteServiceProxy;->syncEasOofSettings(JLcom/android/emailcommon/provider/ExchangeOofSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$localSettings:Lcom/android/emailcommon/provider/ExchangeOofSettings;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;JLcom/android/emailcommon/provider/ExchangeOofSettings;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$8;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$8;->val$accountId:J

    iput-object p4, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$8;->val$localSettings:Lcom/android/emailcommon/provider/ExchangeOofSettings;

    invoke-direct {p0, p1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$EmailProxyTask;-><init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-super {p0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$EmailProxyTask;->run()V

    .line 273
    invoke-virtual {p0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy$8;->getApiVersion()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$8;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->access$000(Lcom/android/emailcommon/external/service/RemoteServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$8;->val$accountId:J

    iget-object v1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$8;->val$localSettings:Lcom/android/emailcommon/provider/ExchangeOofSettings;

    invoke-interface {v0, v2, v3, v1}, Lcom/android/emailcommon/service/IEmailService;->syncEasOofSettings(JLcom/android/emailcommon/provider/ExchangeOofSettings;)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    const-string v0, "EmailServiceProxy"

    const-string v1, "Exchange version doesn\'t support OOF settings"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
