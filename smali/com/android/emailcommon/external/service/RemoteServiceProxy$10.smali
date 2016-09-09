.class Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;
.super Ljava/lang/Object;
.source "RemoteServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/external/service/RemoteServiceProxy;->sendMeetingResponse(JIJJLjava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

.field final synthetic val$draftMessageId:J

.field final synthetic val$meetingRequestComment:Ljava/lang/String;

.field final synthetic val$meetingRequestCommentHtml:Ljava/lang/String;

.field final synthetic val$messageId:J

.field final synthetic val$proposedEndTime:J

.field final synthetic val$proposedStartTime:J

.field final synthetic val$response:I


# direct methods
.method constructor <init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;JIJJLjava/lang/String;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;->val$messageId:J

    iput p4, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;->val$response:I

    iput-wide p5, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;->val$proposedStartTime:J

    iput-wide p7, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;->val$proposedEndTime:J

    iput-object p9, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;->val$meetingRequestComment:Ljava/lang/String;

    iput-wide p10, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;->val$draftMessageId:J

    iput-object p12, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;->val$meetingRequestCommentHtml:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->access$000(Lcom/android/emailcommon/external/service/RemoteServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;->val$messageId:J

    iget v3, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;->val$response:I

    iget-wide v4, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;->val$proposedStartTime:J

    iget-wide v6, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;->val$proposedEndTime:J

    iget-object v8, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;->val$meetingRequestComment:Ljava/lang/String;

    iget-wide v9, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;->val$draftMessageId:J

    iget-object v11, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$10;->val$meetingRequestCommentHtml:Ljava/lang/String;

    invoke-interface/range {v0 .. v11}, Lcom/android/emailcommon/service/IEmailService;->sendMeetingResponse(JIJJLjava/lang/String;JLjava/lang/String;)V

    .line 333
    return-void
.end method
