.class Lcom/google/android/calendar/task/ArpLoadTester$1;
.super Ljava/lang/Object;
.source "ArpLoadTester.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/task/ArpLoadTester;->testAccount(Lcom/google/android/calendar/task/TaskAccount;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/task/ArpLoadTester;

.field final synthetic val$taskAccount:Lcom/google/android/calendar/task/TaskAccount;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/task/ArpLoadTester;Lcom/google/android/calendar/task/TaskAccount;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpLoadTester$1;->this$0:Lcom/google/android/calendar/task/ArpLoadTester;

    iput-object p2, p0, Lcom/google/android/calendar/task/ArpLoadTester$1;->val$taskAccount:Lcom/google/android/calendar/task/TaskAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lcom/google/android/calendar/task/ArpLoadTester$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/task/ArpLoadTester$1$1;-><init>(Lcom/google/android/calendar/task/ArpLoadTester$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 196
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/ArpLoadTester$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 197
    return-void
.end method
