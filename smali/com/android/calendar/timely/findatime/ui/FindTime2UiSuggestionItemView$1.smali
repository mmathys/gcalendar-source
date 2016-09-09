.class Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$1;
.super Ljava/lang/Object;
.source "FindTime2UiSuggestionItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;-><init>(Landroid/content/Context;Ljava/util/TimeZone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$1;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$1;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mOnMoreInformationRequestListener:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$OnMoreInformationRequestListener;
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->access$000(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;)Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$OnMoreInformationRequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$1;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mOnMoreInformationRequestListener:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$OnMoreInformationRequestListener;
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->access$000(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;)Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$OnMoreInformationRequestListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$1;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$1;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;

    .line 60
    # invokes: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->getTimelineSuggestionRow()Lcom/android/calendar/timely/SuggestionRow;
    invoke-static {v2}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->access$100(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;)Lcom/android/calendar/timely/SuggestionRow;

    move-result-object v2

    .line 59
    invoke-interface {v0, v1, v2}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$OnMoreInformationRequestListener;->onMoreInformationRequest(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;Lcom/android/calendar/timely/SuggestionRow;)V

    .line 62
    :cond_0
    return-void
.end method
