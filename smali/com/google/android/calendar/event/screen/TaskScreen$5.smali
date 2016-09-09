.class final Lcom/google/android/calendar/event/screen/TaskScreen$5;
.super Ljava/lang/Object;
.source "TaskScreen.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/screen/TaskScreen;->addCustomIntentSegment(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/TaskScreen$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/calendar/event/screen/TaskScreen$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/TaskScreen$5;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/calendar/event/screen/TaskScreen$5;->val$intent:Landroid/content/Intent;

    const-string v2, "TaskScreen"

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 304
    const/4 v0, 0x0

    return-object v0
.end method
