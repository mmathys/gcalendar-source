.class Lcom/android/emailcommon/external/service/RemoteServiceProxy$4;
.super Ljava/lang/Object;
.source "RemoteServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/external/service/RemoteServiceProxy;->createFolder(JLjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$folderName:Ljava/lang/String;

.field final synthetic val$parentId:J


# direct methods
.method constructor <init>(Lcom/android/emailcommon/external/service/RemoteServiceProxy;JLjava/lang/String;J)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$4;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$4;->val$accountId:J

    iput-object p4, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$4;->val$folderName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$4;->val$parentId:J

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
    .line 195
    iget-object v0, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$4;->this$0:Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/RemoteServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;->access$000(Lcom/android/emailcommon/external/service/RemoteServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$4;->val$accountId:J

    iget-object v3, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$4;->val$folderName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/emailcommon/external/service/RemoteServiceProxy$4;->val$parentId:J

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailService;->createFolder(JLjava/lang/String;J)V

    .line 196
    return-void
.end method
