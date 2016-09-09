.class Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/external/service/ServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/external/service/ServiceProxy;


# direct methods
.method private constructor <init>(Lcom/android/emailcommon/external/service/ServiceProxy;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/external/service/ServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/emailcommon/external/service/ServiceProxy;Lcom/android/emailcommon/external/service/ServiceProxy$1;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;-><init>(Lcom/android/emailcommon/external/service/ServiceProxy;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/external/service/ServiceProxy;

    invoke-virtual {v0, p2}, Lcom/android/emailcommon/external/service/ServiceProxy;->onConnected(Landroid/os/IBinder;)V

    .line 117
    new-instance v0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;-><init>(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 151
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method
