.class Lcom/android/calendar/event/LaunchInfoActivity$3;
.super Ljava/lang/Object;
.source "LaunchInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/LaunchInfoActivity;->showGmsErrorDialog(Lcom/google/android/gms/common/GoogleApiAvailability;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/LaunchInfoActivity;

.field final synthetic val$availability:Lcom/google/android/gms/common/GoogleApiAvailability;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/LaunchInfoActivity;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/calendar/event/LaunchInfoActivity$3;->this$0:Lcom/android/calendar/event/LaunchInfoActivity;

    iput-object p2, p0, Lcom/android/calendar/event/LaunchInfoActivity$3;->val$availability:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/calendar/event/LaunchInfoActivity$3;->val$availability:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/android/calendar/event/LaunchInfoActivity$3;->this$0:Lcom/android/calendar/event/LaunchInfoActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/calendar/event/LaunchInfoActivity$3;->this$0:Lcom/android/calendar/event/LaunchInfoActivity;

    invoke-virtual {v0}, Lcom/android/calendar/event/LaunchInfoActivity;->finish()V

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/LaunchInfoActivity$3;->this$0:Lcom/android/calendar/event/LaunchInfoActivity;

    # invokes: Lcom/android/calendar/event/LaunchInfoActivity;->tryStartup()V
    invoke-static {v0}, Lcom/android/calendar/event/LaunchInfoActivity;->access$000(Lcom/android/calendar/event/LaunchInfoActivity;)V

    goto :goto_0
.end method
