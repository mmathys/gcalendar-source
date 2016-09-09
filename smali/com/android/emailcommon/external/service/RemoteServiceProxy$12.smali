.class Lcom/android/emailcommon/external/service/RemoteServiceProxy$12;
.super Ljava/lang/Object;
.source "RemoteServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/external/service/RemoteServiceProxy;->searchMessages(JLcom/android/emailcommon/service/SearchParams;J)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$destMailboxId:J

.field final synthetic val$searchParams:Lcom/android/emailcommon/service/SearchParams;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;JLcom/android/emailcommon/service/SearchParams;J)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$12;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$12;->val$accountId:J

    iput-object p4, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$12;->val$searchParams:Lcom/android/emailcommon/service/SearchParams;

    iput-wide p5, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$12;->val$destMailboxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 380
    iget-object v6, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$12;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$12;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->access$000(Lcom/android/emailcommon/external/service/RemoteServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$12;->val$accountId:J

    iget-object v3, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$12;->val$searchParams:Lcom/android/emailcommon/service/SearchParams;

    iget-wide v4, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$12;->val$destMailboxId:J

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailService;->searchMessages(JLcom/android/emailcommon/service/SearchParams;J)Landroid/os/Bundle;

    move-result-object v0

    # setter for: Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;
    invoke-static {v6, v0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->access$102(Lcom/android/emailcommon/external/service/RemoteServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    return-void
.end method
