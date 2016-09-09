.class Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;
.super Landroid/os/AsyncTask;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/external/service/ServiceProxy;

    iget-object v0, v0, Lcom/android/emailcommon/external/service/ServiceProxy;->mTask:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;

    invoke-interface {v0}, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :try_start_1
    iget-object v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/external/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/ServiceProxy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/emailcommon/external/service/ServiceProxy;->access$300(Lcom/android/emailcommon/external/service/ServiceProxy;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;

    iget-object v1, v1, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/external/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/emailcommon/external/service/ServiceProxy;->access$200(Lcom/android/emailcommon/external/service/ServiceProxy;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/external/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/emailcommon/external/service/ServiceProxy;->access$200(Lcom/android/emailcommon/external/service/ServiceProxy;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 146
    :try_start_2
    iget-object v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/external/service/ServiceProxy;

    const/4 v2, 0x1

    # setter for: Lcom/android/emailcommon/external/service/ServiceProxy;->mTaskCompleted:Z
    invoke-static {v0, v2}, Lcom/android/emailcommon/external/service/ServiceProxy;->access$402(Lcom/android/emailcommon/external/service/ServiceProxy;Z)Z

    .line 147
    iget-object v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/external/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/emailcommon/external/service/ServiceProxy;->access$200(Lcom/android/emailcommon/external/service/ServiceProxy;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 148
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    const/4 v0, 0x0

    return-object v0

    .line 131
    :catch_0
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;

    iget-object v1, v1, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/external/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/ServiceProxy;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/emailcommon/external/service/ServiceProxy;->access$100(Lcom/android/emailcommon/external/service/ServiceProxy;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RuntimeException when trying to unbind from service"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 122
    :catch_1
    move-exception v0

    .line 123
    :try_start_3
    iget-object v1, p0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;

    iget-object v1, v1, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/external/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/ServiceProxy;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/emailcommon/external/service/ServiceProxy;->access$100(Lcom/android/emailcommon/external/service/ServiceProxy;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteException thrown running mTask!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    :try_start_4
    iget-object v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/external/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/ServiceProxy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/emailcommon/external/service/ServiceProxy;->access$300(Lcom/android/emailcommon/external/service/ServiceProxy;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;

    iget-object v1, v1, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/external/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/emailcommon/external/service/ServiceProxy;->access$200(Lcom/android/emailcommon/external/service/ServiceProxy;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 131
    :catch_2
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;

    iget-object v1, v1, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/external/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/ServiceProxy;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/emailcommon/external/service/ServiceProxy;->access$100(Lcom/android/emailcommon/external/service/ServiceProxy;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RuntimeException when trying to unbind from service"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    .line 130
    :try_start_5
    iget-object v1, p0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;

    iget-object v1, v1, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/external/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/ServiceProxy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/emailcommon/external/service/ServiceProxy;->access$300(Lcom/android/emailcommon/external/service/ServiceProxy;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;

    iget-object v2, v2, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/external/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/emailcommon/external/service/ServiceProxy;->access$200(Lcom/android/emailcommon/external/service/ServiceProxy;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 140
    :goto_1
    throw v0

    .line 131
    :catch_3
    move-exception v1

    .line 138
    iget-object v2, p0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;

    iget-object v2, v2, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/external/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/external/service/ServiceProxy;->mTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/emailcommon/external/service/ServiceProxy;->access$100(Lcom/android/emailcommon/external/service/ServiceProxy;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RuntimeException when trying to unbind from service"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 148
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method
