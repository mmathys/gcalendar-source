.class Lcom/android/calendar/groove/GrooveScheduleFragment$3;
.super Ljava/lang/Object;
.source "GrooveScheduleFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveScheduleFragment;->requestInitialScreenFocus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveScheduleFragment;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$3;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    iput-object p2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$3;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$3;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$3;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    iget v2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$3;->val$position:I

    # invokes: Lcom/android/calendar/groove/GrooveScheduleFragment;->getFocusViewId(I)I
    invoke-static {v1, v2}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$800(Lcom/android/calendar/groove/GrooveScheduleFragment;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_0

    .line 262
    invoke-static {v0}, Lcom/android/calendar/Utils;->requestAccessibilityFocus(Landroid/view/View;)V

    .line 264
    :cond_0
    return-void
.end method
