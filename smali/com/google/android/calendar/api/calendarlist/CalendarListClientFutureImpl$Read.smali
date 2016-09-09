.class Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl$Read;
.super Lcom/google/android/calendar/api/FuturePendingResult;
.source "CalendarListClientFutureImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Read"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/api/FuturePendingResult",
        "<",
        "Lcom/google/android/calendar/api/calendarlist/CalendarListClient$ReadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final mDescriptor:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

.field final synthetic this$0:Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl;Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl$Read;->this$0:Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl;

    invoke-direct {p0}, Lcom/google/android/calendar/api/FuturePendingResult;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl$Read;->mDescriptor:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 18
    invoke-virtual {p0}, Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl$Read;->execute()V

    .line 19
    return-void
.end method


# virtual methods
.method protected calculateResult()Lcom/google/android/calendar/api/calendarlist/CalendarListClient$ReadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl$Read;->this$0:Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl;

    iget-object v1, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl$Read;->mDescriptor:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl;->synchronousRead(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/calendar/api/calendarlist/CalendarListClient$ReadResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic calculateResult()Lcom/google/android/gms/common/api/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl$Read;->calculateResult()Lcom/google/android/calendar/api/calendarlist/CalendarListClient$ReadResult;

    move-result-object v0

    return-object v0
.end method

.method protected createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/calendarlist/CalendarListClient$ReadResult;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;

    invoke-direct {v0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl$Read;->createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/calendarlist/CalendarListClient$ReadResult;

    move-result-object v0

    return-object v0
.end method
