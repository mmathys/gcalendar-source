.class public Lcom/android/calendar/newapi/segment/room/RoomViewSegment;
.super Lcom/android/calendar/newapi/view/MultiLineTextTileView;
.source "RoomViewSegment.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/common/ViewSegment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelT::",
        "Lcom/android/calendar/newapi/model/EventHolder;",
        ">",
        "Lcom/android/calendar/newapi/view/MultiLineTextTileView;",
        "Lcom/android/calendar/newapi/segment/common/ViewSegment;"
    }
.end annotation


# instance fields
.field private final mModel:Lcom/android/calendar/newapi/model/EventHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/EventHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TModelT;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/view/MultiLineTextTileView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/room/RoomViewSegment;->indentContent()Lcom/android/calendar/newapi/view/TileView;

    .line 29
    sget v0, Lcom/android/calendar/R$drawable;->ic_room:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/room/RoomViewSegment;->setIconDrawable(I)Lcom/android/calendar/newapi/view/TileView;

    .line 30
    invoke-static {p0}, Lcom/android/calendar/newapi/view/MaterialViewUtils;->addMaterialListStyling(Landroid/view/ViewGroup;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/room/RoomViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->describe_room_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/room/RoomViewSegment;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 32
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/room/RoomViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    .line 33
    return-void
.end method

.method private createRoomLabels(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attendee/Attendee;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/attendee/Attendee;

    .line 49
    new-instance v3, Landroid/text/SpannableString;

    iget-object v4, v0, Lcom/google/android/calendar/api/attendee/Attendee;->displayName:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, v0, Lcom/google/android/calendar/api/attendee/Attendee;->response:Lcom/google/android/calendar/api/attendee/Response;

    iget v0, v0, Lcom/google/android/calendar/api/attendee/Response;->status:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 52
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    const/4 v4, 0x0

    .line 53
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x11

    .line 52
    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 55
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_1
    return-object v1
.end method


# virtual methods
.method public updateUi()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/room/RoomViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/newapi/segment/room/RoomUtils;->getRooms(Lcom/google/android/calendar/api/Event;)Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/room/RoomViewSegment;->setVisibility(I)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/calendar/newapi/segment/room/RoomViewSegment;->setVisibility(I)V

    .line 43
    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/segment/room/RoomViewSegment;->createRoomLabels(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/room/RoomViewSegment;->setLines(Ljava/util/List;)V

    goto :goto_0
.end method
