.class public Lcom/android/emailcommon/external/service/RemoteServiceProxy$EmailProxyTask;
.super Ljava/lang/Object;
.source "RemoteServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/external/service/RemoteServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EmailProxyTask"
.end annotation


# instance fields
.field private mApiVersion:I

.field final synthetic this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;


# direct methods
.method protected constructor <init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$EmailProxyTask;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiVersion()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$EmailProxyTask;->mApiVersion:I

    return v0
.end method

.method public run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$EmailProxyTask;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->access$000(Lcom/android/emailcommon/external/service/RemoteServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/emailcommon/service/IEmailService;->getApiVersion()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$EmailProxyTask;->mApiVersion:I

    .line 103
    return-void
.end method
