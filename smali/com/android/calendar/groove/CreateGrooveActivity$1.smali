.class Lcom/android/calendar/groove/CreateGrooveActivity$1;
.super Ljava/lang/Object;
.source "CreateGrooveActivity.java"

# interfaces
.implements Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/CreateGrooveActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

.field final synthetic val$calendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

.field final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/CreateGrooveActivity;Lcom/android/calendar/timely/data/CalendarsCache;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/calendar/groove/CreateGrooveActivity$1;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    iput-object p2, p0, Lcom/android/calendar/groove/CreateGrooveActivity$1;->val$calendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    iput-object p3, p0, Lcom/android/calendar/groove/CreateGrooveActivity$1;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged(ILjava/util/Collection;)V
    .locals 2
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
    .line 157
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity$1;->val$calendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity$1;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    # getter for: Lcom/android/calendar/groove/CreateGrooveActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;
    invoke-static {v1}, Lcom/android/calendar/groove/CreateGrooveActivity;->access$000(Lcom/android/calendar/groove/CreateGrooveActivity;)Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/data/CalendarsCache;->removeDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V

    .line 158
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity$1;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/groove/CreateGrooveActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;
    invoke-static {v0, v1}, Lcom/android/calendar/groove/CreateGrooveActivity;->access$002(Lcom/android/calendar/groove/CreateGrooveActivity;Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    .line 159
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity$1;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity$1;->val$savedInstanceState:Landroid/os/Bundle;

    # invokes: Lcom/android/calendar/groove/CreateGrooveActivity;->configureFragments(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/calendar/groove/CreateGrooveActivity;->access$100(Lcom/android/calendar/groove/CreateGrooveActivity;Landroid/os/Bundle;)V

    .line 160
    return-void
.end method
