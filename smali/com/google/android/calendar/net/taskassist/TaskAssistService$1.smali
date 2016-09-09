.class Lcom/google/android/calendar/net/taskassist/TaskAssistService$1;
.super Ljava/lang/Object;
.source "TaskAssistService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/net/taskassist/TaskAssistService;->maybeInitGrpcStub()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

.field final synthetic val$e:Lcom/google/android/gms/auth/UserRecoverableAuthException;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/net/taskassist/TaskAssistService;Lcom/google/android/gms/auth/UserRecoverableAuthException;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService$1;->this$0:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    iput-object p2, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService$1;->val$e:Lcom/google/android/gms/auth/UserRecoverableAuthException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService$1;->val$e:Lcom/google/android/gms/auth/UserRecoverableAuthException;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 179
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistService$1;->this$0:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    # getter for: Lcom/google/android/calendar/net/taskassist/TaskAssistService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->access$000(Lcom/google/android/calendar/net/taskassist/TaskAssistService;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x3ef

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 181
    return-void
.end method
