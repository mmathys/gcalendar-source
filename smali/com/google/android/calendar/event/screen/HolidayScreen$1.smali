.class Lcom/google/android/calendar/event/screen/HolidayScreen$1;
.super Ljava/lang/Object;
.source "HolidayScreen.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$StringProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/screen/HolidayScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/screen/HolidayScreen;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/screen/HolidayScreen;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/HolidayScreen$1;->this$0:Lcom/google/android/calendar/event/screen/HolidayScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStringData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/HolidayScreen$1;->this$0:Lcom/google/android/calendar/event/screen/HolidayScreen;

    # invokes: Lcom/google/android/calendar/event/screen/HolidayScreen;->getTimelineHoliday()Lcom/android/calendar/timely/TimelineHoliday;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/HolidayScreen;->access$000(Lcom/google/android/calendar/event/screen/HolidayScreen;)Lcom/android/calendar/timely/TimelineHoliday;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineHoliday;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
