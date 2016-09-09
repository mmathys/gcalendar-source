.class Lcom/google/android/calendar/event/screen/FlightReservationScreen$2;
.super Ljava/lang/Object;
.source "FlightReservationScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/screen/FlightReservationScreen;->onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/screen/FlightReservationScreen;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/screen/FlightReservationScreen;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen$2;->this$0:Lcom/google/android/calendar/event/screen/FlightReservationScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen$2;->this$0:Lcom/google/android/calendar/event/screen/FlightReservationScreen;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen$2;->this$0:Lcom/google/android/calendar/event/screen/FlightReservationScreen;

    .line 153
    invoke-virtual {v1}, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen$2;->this$0:Lcom/google/android/calendar/event/screen/FlightReservationScreen;

    .line 154
    invoke-virtual {v2}, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_category_event_action:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "flight_check_in"

    .line 153
    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen$2;->this$0:Lcom/google/android/calendar/event/screen/FlightReservationScreen;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/google/android/calendar/event/screen/FlightReservationScreen;->startViewConfirmation(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->access$100(Lcom/google/android/calendar/event/screen/FlightReservationScreen;Landroid/content/Context;)V

    .line 158
    return-void
.end method
