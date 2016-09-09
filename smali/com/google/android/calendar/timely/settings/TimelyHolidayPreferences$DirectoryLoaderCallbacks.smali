.class Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$DirectoryLoaderCallbacks;
.super Ljava/lang/Object;
.source "TimelyHolidayPreferences.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectoryLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;


# direct methods
.method private constructor <init>(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$DirectoryLoaderCallbacks;->this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$1;)V
    .locals 0

    .prologue
    .line 650
    invoke-direct {p0, p1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$DirectoryLoaderCallbacks;-><init>(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 653
    new-instance v0, Lcom/google/android/calendar/timely/settings/DirectoryLoader;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$DirectoryLoaderCallbacks;->this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mAppContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->access$400(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/calendar/timely/settings/DirectoryLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;",
            ">;",
            "Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$DirectoryLoaderCallbacks;->this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;

    # invokes: Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->setDirectory(Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;)V
    invoke-static {v0, p2}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->access$600(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;)V

    .line 659
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$DirectoryLoaderCallbacks;->this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mPendingLoaders:Lcom/google/calendar/v2/client/service/common/ObservableCollection;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->access$000(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;)Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->remove(Ljava/lang/Object;)Z

    .line 660
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 650
    check-cast p2, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$DirectoryLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 665
    return-void
.end method
