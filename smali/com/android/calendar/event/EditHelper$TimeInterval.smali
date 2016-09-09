.class Lcom/android/calendar/event/EditHelper$TimeInterval;
.super Ljava/lang/Object;
.source "EditHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeInterval"
.end annotation


# instance fields
.field public final endMillis:J

.field public final startMillis:J

.field public final timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 1735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1736
    iput-wide p1, p0, Lcom/android/calendar/event/EditHelper$TimeInterval;->startMillis:J

    .line 1737
    iput-wide p3, p0, Lcom/android/calendar/event/EditHelper$TimeInterval;->endMillis:J

    .line 1738
    iput-object p5, p0, Lcom/android/calendar/event/EditHelper$TimeInterval;->timezone:Ljava/lang/String;

    .line 1739
    return-void
.end method
