.class Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$1;
.super Ljava/lang/Object;
.source "FindTime2UiSuggestionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 180
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$1;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$1;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    const/4 v1, 0x0

    # invokes: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->finish(Lcom/android/calendar/timely/SuggestionRow;)V
    invoke-static {v0, v1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$000(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;Lcom/android/calendar/timely/SuggestionRow;)V

    .line 184
    return-void
.end method
