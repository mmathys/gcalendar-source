.class Lcom/android/calendar/AllInOneCalendarActivity$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AllInOneCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity;->dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneCalendarActivity;

.field final synthetic val$fragment:Lcom/android/calendar/OverlayFragment;

.field final synthetic val$shouldShowFab:Z


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;Lcom/android/calendar/OverlayFragment;Z)V
    .locals 0

    .prologue
    .line 2234
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$17;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    iput-object p2, p0, Lcom/android/calendar/AllInOneCalendarActivity$17;->val$fragment:Lcom/android/calendar/OverlayFragment;

    iput-boolean p3, p0, Lcom/android/calendar/AllInOneCalendarActivity$17;->val$shouldShowFab:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$17;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/AllInOneCalendarActivity;->mInfoFragmentDismiss:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$3502(Lcom/android/calendar/AllInOneCalendarActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 2238
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$17;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$17;->val$fragment:Lcom/android/calendar/OverlayFragment;

    iget-boolean v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$17;->val$shouldShowFab:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/AllInOneCalendarActivity;->finishDismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V

    .line 2239
    return-void
.end method
