.class Lcom/android/calendar/event/EventInfoFragment$3;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->onViewUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 878
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$3;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$3;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 882
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$3;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->onViewUpdated()V
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$300(Lcom/android/calendar/event/EventInfoFragment;)V

    .line 883
    return-void
.end method
