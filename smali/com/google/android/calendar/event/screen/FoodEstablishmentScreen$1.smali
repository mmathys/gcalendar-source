.class Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen$1;
.super Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$CommonConfirmationProvider;
.source "FoodEstablishmentScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen$1;->this$0:Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;

    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$CommonConfirmationProvider;-><init>(Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;)V

    return-void
.end method


# virtual methods
.method public getConfirmationNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method
