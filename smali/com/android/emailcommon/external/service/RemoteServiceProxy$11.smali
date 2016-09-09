.class Lcom/android/emailcommon/external/service/RemoteServiceProxy$11;
.super Ljava/lang/Object;
.source "RemoteServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/external/service/RemoteServiceProxy;->deleteExternalAccountPIMData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

.field final synthetic val$emailAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$11;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    iput-object p2, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$11;->val$emailAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$11;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->access$000(Lcom/android/emailcommon/external/service/RemoteServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$11;->val$emailAddress:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/emailcommon/service/IEmailService;->deleteExternalAccountPIMData(Ljava/lang/String;)V

    .line 351
    return-void
.end method
