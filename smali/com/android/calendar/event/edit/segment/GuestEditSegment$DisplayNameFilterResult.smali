.class Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;
.super Ljava/lang/Object;
.source "GuestEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/GuestEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayNameFilterResult"
.end annotation


# instance fields
.field private final emailToDisplayName:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final emailsWithoutDisplayNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/util/SimpleArrayMap;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;->emailToDisplayName:Landroid/support/v4/util/SimpleArrayMap;

    .line 841
    iput-object p2, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;->emailsWithoutDisplayNames:Ljava/util/List;

    .line 842
    return-void
.end method

.method static synthetic access$1000(Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;)Ljava/util/List;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;->emailsWithoutDisplayNames:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;)Landroid/support/v4/util/SimpleArrayMap;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;->emailToDisplayName:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method
