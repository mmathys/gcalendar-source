.class Lcom/android/emailcommon/external/service/RemoteServiceProxy$17;
.super Ljava/lang/Object;
.source "RemoteServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/external/service/RemoteServiceProxy;->retrieveRecipientAvailabilities(Ljava/lang/String;Ljava/util/List;JJ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$endTime:J

.field final synthetic val$recipients:Ljava/util/List;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;Ljava/lang/String;Ljava/util/List;JJ)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$17;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    iput-object p2, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$17;->val$accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$17;->val$recipients:Ljava/util/List;

    iput-wide p4, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$17;->val$startTime:J

    iput-wide p6, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$17;->val$endTime:J

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
    .line 486
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$17;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    iget-object v1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$17;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->access$000(Lcom/android/emailcommon/external/service/RemoteServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$17;->val$accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$17;->val$recipients:Ljava/util/List;

    iget-wide v4, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$17;->val$startTime:J

    iget-wide v6, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$17;->val$endTime:J

    invoke-interface/range {v1 .. v7}, Lcom/android/emailcommon/service/IEmailService;->retrieveRecipientAvailabilities(Ljava/lang/String;Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->access$102(Lcom/android/emailcommon/external/service/RemoteServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    return-void
.end method
