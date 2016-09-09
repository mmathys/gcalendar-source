.class Lcom/android/calendar/event/EventInfoFragment$22;
.super Lcom/android/calendar/PreventDoubleClick;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->updateEditButton(Landroid/view/View;I)V
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
    .line 2693
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$22;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0}, Lcom/android/calendar/PreventDoubleClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$22;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->doEdit()V
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$4300(Lcom/android/calendar/event/EventInfoFragment;)V

    .line 2697
    return-void
.end method
