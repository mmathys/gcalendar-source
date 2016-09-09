.class Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;
.super Ljava/lang/Object;
.source "AttachmentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/segment/AttachmentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttachmentDescriptor"
.end annotation


# instance fields
.field private final colorId:I

.field private final descriptionId:I

.field private final iconId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p1, p0, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;->descriptionId:I

    .line 163
    iput p2, p0, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;->iconId:I

    .line 164
    iput p3, p0, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;->colorId:I

    .line 165
    return-void
.end method


# virtual methods
.method public getColorId()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;->colorId:I

    return v0
.end method

.method public getDescriptionId()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;->descriptionId:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;->iconId:I

    return v0
.end method
