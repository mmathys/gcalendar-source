.class Lcom/android/emailcommon/external/service/RemoteServiceProxy$1;
.super Ljava/lang/Object;
.source "RemoteServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/external/service/RemoteServiceProxy;->loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$attachmentId:J

.field final synthetic val$background:Z

.field final synthetic val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;Lcom/android/emailcommon/service/IEmailServiceCallback;JJZ)V
    .locals 1

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$1;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    iput-object p2, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$1;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    iput-wide p3, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$1;->val$accountId:J

    iput-wide p5, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$1;->val$attachmentId:J

    iput-boolean p7, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$1;->val$background:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$1;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->access$000(Lcom/android/emailcommon/external/service/RemoteServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$1;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    iget-wide v2, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$1;->val$accountId:J

    iget-wide v4, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$1;->val$attachmentId:J

    iget-boolean v6, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$1;->val$background:Z

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailService;->loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JJZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 129
    :try_start_1
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$1;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$1;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$1;->val$attachmentId:J

    const/16 v6, 0x15

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 133
    :catch_1
    move-exception v0

    goto :goto_0
.end method
