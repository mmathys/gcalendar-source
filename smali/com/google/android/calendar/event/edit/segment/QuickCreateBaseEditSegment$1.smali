.class Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$1;
.super Ljava/lang/Object;
.source "QuickCreateBaseEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$1;->onChange(Ljava/lang/String;)V

    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onTitleChanged(Ljava/lang/String;)V

    .line 107
    return-void
.end method
