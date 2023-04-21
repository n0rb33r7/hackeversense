.class final enum Lcom/senseonics/view/SimpleDialogFragment$DialogState;
.super Ljava/lang/Enum;
.source "SimpleDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/view/SimpleDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DialogState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/view/SimpleDialogFragment$DialogState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/view/SimpleDialogFragment$DialogState;

.field public static final enum CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

.field public static final enum CANCELLING:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

.field public static final enum FINISHING:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

.field public static final enum NOT_CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 210
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    const-string v1, "NOT_CANCELLABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/view/SimpleDialogFragment$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->NOT_CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    .line 211
    new-instance v1, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    const-string v3, "CANCELLABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/senseonics/view/SimpleDialogFragment$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    .line 212
    new-instance v3, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    const-string v5, "CANCELLING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/senseonics/view/SimpleDialogFragment$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->CANCELLING:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    .line 213
    new-instance v5, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    const-string v7, "FINISHING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/senseonics/view/SimpleDialogFragment$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->FINISHING:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 209
    sput-object v7, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->$VALUES:[Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/view/SimpleDialogFragment$DialogState;
    .locals 1

    .line 209
    const-class v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/view/SimpleDialogFragment$DialogState;
    .locals 1

    .line 209
    sget-object v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->$VALUES:[Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    invoke-virtual {v0}, [Lcom/senseonics/view/SimpleDialogFragment$DialogState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    return-object v0
.end method
