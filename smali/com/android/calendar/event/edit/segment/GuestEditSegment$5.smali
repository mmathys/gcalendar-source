.class Lcom/android/calendar/event/edit/segment/GuestEditSegment$5;
.super Ljava/lang/Object;
.source "GuestEditSegment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getContactChipComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V
    .locals 1

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$5;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$5;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)I
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$5;->mCollator:Ljava/text/Collator;

    # getter for: Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->access$900(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mName:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->access$900(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 465
    check-cast p1, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    check-cast p2, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$5;->compare(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)I

    move-result v0

    return v0
.end method
