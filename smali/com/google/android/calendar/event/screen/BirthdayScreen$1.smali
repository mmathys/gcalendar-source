.class Lcom/google/android/calendar/event/screen/BirthdayScreen$1;
.super Ljava/lang/Object;
.source "BirthdayScreen.java"

# interfaces
.implements Lcom/google/android/calendar/event/segment/BirthdaysSegment$BirthdayProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/screen/BirthdayScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/screen/BirthdayScreen;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/screen/BirthdayScreen;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen$1;->this$0:Lcom/google/android/calendar/event/screen/BirthdayScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBirthdayData()Lcom/android/calendar/timely/TimelineBirthday;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen$1;->this$0:Lcom/google/android/calendar/event/screen/BirthdayScreen;

    # getter for: Lcom/google/android/calendar/event/screen/BirthdayScreen;->mTimelineBirthday:Lcom/android/calendar/timely/TimelineBirthday;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/BirthdayScreen;->access$000(Lcom/google/android/calendar/event/screen/BirthdayScreen;)Lcom/android/calendar/timely/TimelineBirthday;

    move-result-object v0

    return-object v0
.end method
