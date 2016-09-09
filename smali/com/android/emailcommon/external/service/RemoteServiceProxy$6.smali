.class Lcom/android/emailcommon/external/service/RemoteServiceProxy$6;
.super Ljava/lang/Object;
.source "RemoteServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/external/service/RemoteServiceProxy;->autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$6;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    iput-object p2, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$6;->val$userName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$6;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 230
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$6;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    iget-object v1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$6;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->access$000(Lcom/android/emailcommon/external/service/RemoteServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$6;->val$userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$6;->val$password:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService;->autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    # setter for: Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mReturn:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->access$102(Lcom/android/emailcommon/external/service/RemoteServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method
