.class Lcom/google/android/calendar/ical/ICalControllerFragment$3;
.super Ljava/lang/Object;
.source "ICalControllerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/ical/ICalControllerFragment;->registerCancel(Lcom/android/calendar/event/CalendarEventModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

.field final synthetic val$model:Lcom/android/calendar/event/CalendarEventModel;

.field final synthetic val$originalModels:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/ical/ICalControllerFragment;Ljava/util/Collection;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$3;->this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

    iput-object p2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$3;->val$originalModels:Ljava/util/Collection;

    iput-object p3, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$3;->val$model:Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$3;->val$originalModels:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    .line 435
    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$3;->this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

    invoke-virtual {v2}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$3;->val$model:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v2, v3, v0}, Lcom/google/android/calendar/ical/ICalUtils;->deleteEvent(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;)Z

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$3;->this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

    invoke-virtual {v0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 438
    return-void
.end method
