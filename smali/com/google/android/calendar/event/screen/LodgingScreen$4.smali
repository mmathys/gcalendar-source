.class Lcom/google/android/calendar/event/screen/LodgingScreen$4;
.super Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$CommonConfirmationProvider;
.source "LodgingScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/screen/LodgingScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/screen/LodgingScreen;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/screen/LodgingScreen;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/LodgingScreen$4;->this$0:Lcom/google/android/calendar/event/screen/LodgingScreen;

    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$CommonConfirmationProvider;-><init>(Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;)V

    return-void
.end method


# virtual methods
.method public getConfirmationNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen$4;->this$0:Lcom/google/android/calendar/event/screen/LodgingScreen;

    # getter for: Lcom/google/android/calendar/event/screen/LodgingScreen;->mReservationNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/LodgingScreen;->access$100(Lcom/google/android/calendar/event/screen/LodgingScreen;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
