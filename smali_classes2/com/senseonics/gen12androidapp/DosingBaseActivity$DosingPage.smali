.class public final enum Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;
.super Ljava/lang/Enum;
.source "DosingBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/DosingBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "DosingPage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

.field public static final enum MATCH:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

.field public static final enum NOT_OK:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

.field public static final enum OK:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

.field public static final enum SUMMARY:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

.field public static final enum WELCOME:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;


# instance fields
.field private dosingImage:I

.field private dosingImage_mg:I

.field private dosingImage_mmol:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 59
    new-instance v6, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    const-string v1, "WELCOME"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->WELCOME:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    .line 60
    new-instance v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    const-string v8, "OK"

    const/4 v9, 0x1

    const v10, 0x7f0800b1

    const v11, 0x7f0800b2

    const v12, 0x7f0800b3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->OK:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    .line 61
    new-instance v1, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    const-string v14, "MATCH"

    const/4 v15, 0x2

    const v16, 0x7f0800ae

    const v17, 0x7f0800af

    const v18, 0x7f0800b0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->MATCH:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    .line 62
    new-instance v2, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    const-string v8, "NOT_OK"

    const/4 v9, 0x3

    const v10, 0x7f0800a8

    const v11, 0x7f0800a9

    const v12, 0x7f0800aa

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->NOT_OK:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    .line 63
    new-instance v3, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    const-string v14, "SUMMARY"

    const/4 v15, 0x4

    const v16, 0x7f0800ab

    const v17, 0x7f0800ac

    const v18, 0x7f0800ad

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->SUMMARY:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    .line 58
    sput-object v4, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->$VALUES:[Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->dosingImage:I

    .line 71
    iput p4, p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->dosingImage_mg:I

    .line 72
    iput p5, p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->dosingImage_mmol:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;
    .locals 1

    .line 58
    const-class v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;
    .locals 1

    .line 58
    sget-object v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->$VALUES:[Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    invoke-virtual {v0}, [Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    return-object v0
.end method


# virtual methods
.method public getDosingImage()I
    .locals 2

    .line 78
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->dosingImage_mg:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->dosingImage_mmol:I

    :goto_0
    return v0
.end method
