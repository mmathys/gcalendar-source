.class Lcom/google/android/calendar/task/ArpTaskAccount$AsyncNotifyListener;
.super Landroid/os/AsyncTask;
.source "ArpTaskAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/task/ArpTaskAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncNotifyListener"
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
.field final synthetic this$0:Lcom/google/android/calendar/task/ArpTaskAccount;


# direct methods
.method private constructor <init>(Lcom/google/android/calendar/task/ArpTaskAccount;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncNotifyListener;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/task/ArpTaskAccount;Lcom/google/android/calendar/task/ArpTaskAccount$1;)V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncNotifyListener;-><init>(Lcom/google/android/calendar/task/ArpTaskAccount;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 406
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncNotifyListener;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 409
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncNotifyListener;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mListener:Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;
    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$200(Lcom/google/android/calendar/task/ArpTaskAccount;)Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncNotifyListener;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    invoke-interface {v0, v1, v2}, Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;->onTaskAccountLoaded(Lcom/google/android/calendar/task/TaskAccount;Ljava/lang/Integer;)V

    .line 410
    return-object v2
.end method
