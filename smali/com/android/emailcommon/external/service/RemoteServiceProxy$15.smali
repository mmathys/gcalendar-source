.class Lcom/android/emailcommon/external/service/RemoteServiceProxy$15;
.super Ljava/lang/Object;
.source "RemoteServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/external/service/RemoteServiceProxy;->pushModifyWithBackoff(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$prevBackoffMillis:J


# direct methods
.method constructor <init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;JJ)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$15;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$15;->val$accountId:J

    iput-wide p4, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$15;->val$prevBackoffMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$15;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->access$000(Lcom/android/emailcommon/external/service/RemoteServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$15;->val$accountId:J

    iget-wide v4, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$15;->val$prevBackoffMillis:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/emailcommon/service/IEmailService;->pushModifyWithBackoff(JJ)V

    .line 446
    return-void
.end method
