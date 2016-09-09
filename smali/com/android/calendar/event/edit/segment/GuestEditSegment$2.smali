.class Lcom/android/calendar/event/edit/segment/GuestEditSegment$2;
.super Lcom/android/calendar/event/edit/segment/GuestEditSegment$FindTimeListener;
.source "GuestEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/GuestEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/edit/segment/GuestEditSegment$FindTimeListener",
        "<",
        "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V
    .locals 1

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$2;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$FindTimeListener;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;)V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/api/time/DateTime;)V
    .locals 0

    .prologue
    .line 147
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$FindTimeListener;->onChange(Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 143
    check-cast p1, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$2;->onChange(Lcom/google/calendar/v2/client/service/api/time/DateTime;)V

    return-void
.end method
