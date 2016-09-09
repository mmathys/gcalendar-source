.class Lcom/android/calendar/SpeedDialLayout$5;
.super Ljava/lang/Object;
.source "SpeedDialLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/SpeedDialLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/SpeedDialLayout;


# direct methods
.method constructor <init>(Lcom/android/calendar/SpeedDialLayout;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/calendar/SpeedDialLayout$5;->this$0:Lcom/android/calendar/SpeedDialLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout$5;->this$0:Lcom/android/calendar/SpeedDialLayout;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/SpeedDialLayout;->hide(J)V

    .line 179
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout$5;->this$0:Lcom/android/calendar/SpeedDialLayout;

    # getter for: Lcom/android/calendar/SpeedDialLayout;->speedDialActivity:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/android/calendar/SpeedDialLayout;->access$000(Lcom/android/calendar/SpeedDialLayout;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout$5;->this$0:Lcom/android/calendar/SpeedDialLayout;

    # getter for: Lcom/android/calendar/SpeedDialLayout;->speedDialActivity:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/android/calendar/SpeedDialLayout;->access$000(Lcom/android/calendar/SpeedDialLayout;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/SpeedDialLayout$SpeedDialActivity;

    invoke-interface {v0}, Lcom/android/calendar/SpeedDialLayout$SpeedDialActivity;->onCreateTaskClicked()V

    .line 182
    :cond_0
    return-void
.end method
