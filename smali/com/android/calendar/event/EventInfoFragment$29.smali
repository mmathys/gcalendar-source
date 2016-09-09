.class Lcom/android/calendar/event/EventInfoFragment$29;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->monitorCalendarCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener",
        "<",
        "Lcom/android/calendar/timely/data/CalendarItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;

.field final synthetic val$calendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;Lcom/android/calendar/timely/data/CalendarsCache;)V
    .locals 0

    .prologue
    .line 3197
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$29;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/EventInfoFragment$29;->val$calendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged(ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/timely/data/DiffData",
            "<",
            "Lcom/android/calendar/timely/data/CalendarItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 3200
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$29;->val$calendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/data/CalendarsCache;->removeDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V

    .line 3202
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$29;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->monitorCalendarCache()V

    .line 3203
    return-void
.end method
