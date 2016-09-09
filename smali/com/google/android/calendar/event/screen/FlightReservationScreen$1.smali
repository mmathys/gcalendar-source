.class Lcom/google/android/calendar/event/screen/FlightReservationScreen$1;
.super Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$CommonConfirmationProvider;
.source "FlightReservationScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/screen/FlightReservationScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
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
    .line 123
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen$1;->this$0:Lcom/google/android/calendar/event/screen/FlightReservationScreen;

    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$CommonConfirmationProvider;-><init>(Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;)V

    return-void
.end method


# virtual methods
.method public getConfirmationNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen$1;->this$0:Lcom/google/android/calendar/event/screen/FlightReservationScreen;

    # getter for: Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mReservationNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->access$000(Lcom/google/android/calendar/event/screen/FlightReservationScreen;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
