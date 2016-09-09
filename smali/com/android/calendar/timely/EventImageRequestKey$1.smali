.class Lcom/android/calendar/timely/EventImageRequestKey$1;
.super Ljava/lang/Object;
.source "EventImageRequestKey.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/EventImageRequestKey;-><init>(Landroid/content/Context;IIZLjava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/calendar/event/EventExtrasImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/EventImageRequestKey;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/EventImageRequestKey;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/calendar/timely/EventImageRequestKey$1;->this$0:Lcom/android/calendar/timely/EventImageRequestKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/calendar/event/EventExtrasImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey$1;->this$0:Lcom/android/calendar/timely/EventImageRequestKey;

    .line 118
    # getter for: Lcom/android/calendar/timely/EventImageRequestKey;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/calendar/timely/EventImageRequestKey;->access$000(Lcom/android/calendar/timely/EventImageRequestKey;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey$1;->this$0:Lcom/android/calendar/timely/EventImageRequestKey;

    # getter for: Lcom/android/calendar/timely/EventImageRequestKey;->mEventId:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/calendar/timely/EventImageRequestKey;->access$100(Lcom/android/calendar/timely/EventImageRequestKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey$1;->this$0:Lcom/android/calendar/timely/EventImageRequestKey;

    # getter for: Lcom/android/calendar/timely/EventImageRequestKey;->mCalendarId:J
    invoke-static {v0}, Lcom/android/calendar/timely/EventImageRequestKey;->access$200(Lcom/android/calendar/timely/EventImageRequestKey;)J

    move-result-wide v4

    .line 117
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/calendar/event/EventExtrasImpl;->createEventExtras(Landroid/content/Context;JJ)Lcom/google/android/calendar/event/EventExtrasImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/calendar/timely/EventImageRequestKey$1;->call()Lcom/google/android/calendar/event/EventExtrasImpl;

    move-result-object v0

    return-object v0
.end method
