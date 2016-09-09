.class Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$4;
.super Ljava/lang/Object;
.source "FindTime2UiSuggestionFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$4;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 318
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$4;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$1300(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 319
    sget-object v0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->TAG:Ljava/lang/String;

    const-string v1, "Cannot get the suggestion for a header %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 323
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$4;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListener:Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$1400(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;

    move-result-object v1

    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$4;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$1300(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/SuggestionRow;

    iget-object v0, v0, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-interface {v1, v0}, Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;->onTimeSlotMoreSelected(Lcom/android/calendar/timely/TimelineSuggestion;)V

    goto :goto_0
.end method
