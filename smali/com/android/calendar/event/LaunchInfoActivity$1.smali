.class Lcom/android/calendar/event/LaunchInfoActivity$1;
.super Ljava/lang/Object;
.source "LaunchInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/LaunchInfoActivity;->showGetAccountsIssueDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/LaunchInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/LaunchInfoActivity;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/calendar/event/LaunchInfoActivity$1;->this$0:Lcom/android/calendar/event/LaunchInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/calendar/event/LaunchInfoActivity$1;->this$0:Lcom/android/calendar/event/LaunchInfoActivity;

    invoke-virtual {v0}, Lcom/android/calendar/event/LaunchInfoActivity;->finish()V

    .line 152
    return-void
.end method
