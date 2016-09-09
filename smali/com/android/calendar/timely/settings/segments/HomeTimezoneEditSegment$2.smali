.class Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment$2;
.super Ljava/lang/Object;
.source "HomeTimezoneEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;
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
.field final synthetic this$0:Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment$2;->this$0:Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment$2;->onChange(Ljava/lang/String;)V

    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment$2;->this$0:Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mTimezoneButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->access$100(Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment$2;->this$0:Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;

    # invokes: Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->getTimezoneName(Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v1, p1}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->access$300(Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method
