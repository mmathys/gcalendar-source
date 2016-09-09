.class Lcom/google/android/calendar/api/HabitFactoryImpl;
.super Ljava/lang/Object;
.source "HabitFactoryImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/HabitFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modifyHabit(Lcom/google/android/calendar/api/Habit;)Lcom/google/android/calendar/api/HabitModifications;
    .locals 1

    .prologue
    .line 21
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 22
    new-instance v0, Lcom/google/android/calendar/api/HabitImpl$Modification;

    invoke-direct {v0, p1}, Lcom/google/android/calendar/api/HabitImpl$Modification;-><init>(Lcom/google/android/calendar/api/Habit;)V

    return-object v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newHabit(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/calendar/api/HabitModifications;
    .locals 1

    .prologue
    .line 14
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/utils/AccountUtils;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 16
    new-instance v0, Lcom/google/android/calendar/api/HabitImpl$Modification;

    invoke-direct {v0, p1}, Lcom/google/android/calendar/api/HabitImpl$Modification;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V

    return-object v0
.end method
