.class Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$3;
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
    .line 273
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$3;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

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
    .line 276
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$3;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$700(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/SuggestionRow;

    .line 277
    iget v1, v0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    packed-switch v1, :pswitch_data_0

    .line 299
    :goto_0
    :pswitch_0
    return-void

    .line 279
    :pswitch_1
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$3;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # invokes: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->finish(Lcom/android/calendar/timely/SuggestionRow;)V
    invoke-static {v1, v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$000(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;Lcom/android/calendar/timely/SuggestionRow;)V

    goto :goto_0

    .line 282
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$3;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # invokes: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->logFindLaterSuggestions()V
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$800(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)V

    .line 283
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$3;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTimezone:Ljava/util/TimeZone;
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$900(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$3;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    .line 285
    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;
    invoke-static {v1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$1000(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getNextAroundADatePivotDate(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$3;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;
    invoke-static {v1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$1000(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->setTimeframeOption(I)V

    .line 288
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$3;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;
    invoke-static {v1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$1000(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$3;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    .line 289
    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTimezone:Ljava/util/TimeZone;
    invoke-static {v2}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$900(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    .line 291
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getYear()I

    move-result v3

    .line 292
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMonthOfYear()I

    move-result v4

    .line 293
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfMonth()I

    move-result v0

    .line 290
    invoke-interface {v2, v3, v4, v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withDate(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    iput-object v0, v1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 295
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$3;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # invokes: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->setTimeframeDurationLabel()V
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$1100(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)V

    .line 296
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$3;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # invokes: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->notifyListenerQuery()V
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$1200(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)V

    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
