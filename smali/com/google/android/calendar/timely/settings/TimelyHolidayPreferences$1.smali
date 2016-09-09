.class Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$1;
.super Ljava/lang/Object;
.source "TimelyHolidayPreferences.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$1;->this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/common/CollectionDelta;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$1;->this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mPendingLoaders:Lcom/google/calendar/v2/client/service/common/ObservableCollection;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->access$000(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;)Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$1;->this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->segments:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 242
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    move v2, v1

    .line 243
    :goto_0
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$1;->this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mSegments:Ljava/util/Collection;
    invoke-static {v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->access$100(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/editor/EditSegment;

    .line 244
    iget-object v4, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$1;->this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;

    invoke-virtual {v1, v4}, Lcom/android/calendar/editor/EditSegment;->setInput(Ljava/lang/Object;)V

    .line 245
    if-nez v2, :cond_0

    .line 246
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 242
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$1;->this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->access$200(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;)Lcom/android/calendar/timely/LoadingStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/LoadingStateManager;->onDataLoaded()V

    .line 250
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$1;->this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mPendingLoaders:Lcom/google/calendar/v2/client/service/common/ObservableCollection;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->access$000(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;)Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 252
    :cond_3
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 237
    check-cast p1, Lcom/google/calendar/v2/client/service/common/CollectionDelta;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$1;->onChange(Lcom/google/calendar/v2/client/service/common/CollectionDelta;)V

    return-void
.end method
